.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ebx, eax
lea eax, qword ptr [rcx + rax + 38]
and rsi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rsi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 3
add al, 54 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
adc dx, 19
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
add al, 93
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and dil, al
cmp dil, 37
lea rax, qword ptr [rax + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
