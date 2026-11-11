.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 78
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
sbb dil, al
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 65
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
lea esi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
xor bl, cl
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
