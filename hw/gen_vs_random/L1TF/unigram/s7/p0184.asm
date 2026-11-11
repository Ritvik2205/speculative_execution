.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
cmovo rdi, rdx
add bl, -9 # instrumentation
adc rcx, 5
cmovb esi, ecx
add al, 109 # instrumentation
adc cx, 40
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
add sil, -124 # instrumentation
setnz sil
setbe bl
bts esi, 43
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 43
mov edi, 2036069402
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
