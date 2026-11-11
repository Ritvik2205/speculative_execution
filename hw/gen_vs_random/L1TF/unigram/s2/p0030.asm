.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
inc dl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 72
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
lea cx, qword ptr [rcx + rcx + 61]
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
cmp rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
