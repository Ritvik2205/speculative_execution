.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
lea ax, qword ptr [rsi + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
or eax, 848176907
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
xor ecx, 28
lea di, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rcx]
xchg dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
