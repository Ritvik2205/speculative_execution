.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
cmovnb rcx, rdi
cmovb ebx, esi
cmp bl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt rax, rdi
cmovle ax, di
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
cmp rsi, rax
movzx bx, dl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
mov al, cl
add al, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
