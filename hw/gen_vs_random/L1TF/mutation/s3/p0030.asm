.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 123
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
cmovnb edi, esi
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
lea rax, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and dl, 32
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
lea esi, qword ptr [rdi + rsi + 45859]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
add dl, 120 # instrumentation
adc cl, 66
or rdx, -22
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
