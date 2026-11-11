.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, al
lea si, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
lea si, qword ptr [rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
imul ebx, edx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
setnz cl
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
add cl, 56 # instrumentation
cmovns edx, ecx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 37
lea rdi, qword ptr [rsi + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 79
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
