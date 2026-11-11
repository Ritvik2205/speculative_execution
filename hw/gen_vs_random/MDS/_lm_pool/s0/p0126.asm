.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
or dl, -31
test al, bl
bt ecx, eax
xor ax, -16696
xor ecx, 8
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
or esi, -110
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and ebx, 20
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
