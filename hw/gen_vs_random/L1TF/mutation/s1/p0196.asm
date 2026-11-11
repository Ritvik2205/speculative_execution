.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, esi
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
setp bl
xchg esi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
setns al
imul bl
lea si, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
setp dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
adc rsi, rcx
and rax, -109
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
