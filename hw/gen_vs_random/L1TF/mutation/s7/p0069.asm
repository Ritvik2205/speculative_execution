.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 123
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
lea rax, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
cmovnb edi, esi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and dl, 32
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
or rdx, 11
add dl, 120 # instrumentation
adc cl, 66
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
lea esi, qword ptr [rdi + rsi + 45859]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
