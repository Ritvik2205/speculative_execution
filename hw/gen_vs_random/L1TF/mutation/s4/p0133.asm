.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -86
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
cmp bl, 123
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
cmovnb edi, esi
lea rax, qword ptr [rax + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
or rdx, 11
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
lea esi, qword ptr [rdi + rsi + 45859]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
add dl, 120 # instrumentation
adc cl, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
