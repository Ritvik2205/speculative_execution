.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
lea rdx, qword ptr [rbx]
btr esi, ebx
add al, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
add rcx, 97
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
add dl, -57 # instrumentation
setz dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
inc bx
lea ecx, qword ptr [rsi + rsi + 8]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
test ax, si
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
