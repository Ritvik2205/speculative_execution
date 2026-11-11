.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
test dl, -119
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
xor dl, 40
and sil, dil
test rdi, 6
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor cl, 98
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor cx, -18
and eax, 943733866
test al, sil
or al, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
bts rdx, 200
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
