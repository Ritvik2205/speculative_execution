.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
xor al, -26
and al, dil
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
test bl, -9
xor rdx, -59
btr rax, 56
xor al, 8
and dl, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
or cx, -42
bt eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
