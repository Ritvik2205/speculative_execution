.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and dil, -62
or dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
or dl, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor al, -89
or sil, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
