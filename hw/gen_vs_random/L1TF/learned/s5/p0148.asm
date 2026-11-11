.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 16
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
or ax, -10161
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
setz dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
lea rdi, qword ptr [rcx + rax + 49]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
