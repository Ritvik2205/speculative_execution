.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, sil
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
add cl, -41 # instrumentation
adc dx, cx
test rdx, 22
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or bl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
test al, al
sbb rdx, 98
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
cmp esi, esi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
