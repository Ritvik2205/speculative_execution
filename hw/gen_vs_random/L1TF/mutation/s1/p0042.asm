.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
and rax, 1994547909
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
test edi, esi
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
setp bl
add dl, dl
adc rsi, rcx
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
setns al
setp dl
xchg esi, edi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
imul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
