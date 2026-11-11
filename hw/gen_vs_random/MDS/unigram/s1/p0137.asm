.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, rsi
btr ax, 193
and ebx, 96
test rsi, rax
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
bts rcx, 100
xor dx, 85
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
test edx, -1561252782
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and al, dil
or al, sil
cmovnle rcx, rdi
or al, sil
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
