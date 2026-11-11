.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, cl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
not esi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
cmp dl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
sub edi, esi
add dl, 100 # instrumentation
lea di, qword ptr [rdx]
xor dil, dil
mov sil, sil
inc ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
