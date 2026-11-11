.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dl
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
setp bl
setns al
add dl, dl
and rax, 1163013815
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
imul bl
xchg esi, edi
lea si, qword ptr [rsi]
adc rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
