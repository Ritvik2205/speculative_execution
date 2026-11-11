.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
setz cl
imul al
or dx, 55
setnb cl
add bl, -45 # instrumentation
cmovs rax, rax
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 51
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 90
sets sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
imul rax, rbx, 65
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
