.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rsi, rcx
setns al
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
test edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
setp bl
add dl, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
setp dl
lea si, qword ptr [rsi]
xchg esi, edi
and rax, 1994547909
imul bl
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
