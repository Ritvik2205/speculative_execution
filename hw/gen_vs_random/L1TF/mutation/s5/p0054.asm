.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, dl
setp bl
and rax, -109
imul bl
setp dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
adc rsi, rcx
test edi, esi
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
lea si, qword ptr [rsi]
setns al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
xchg esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
