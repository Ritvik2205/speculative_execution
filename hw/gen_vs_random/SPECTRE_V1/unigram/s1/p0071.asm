.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
cmovns rax, rcx
add dl, 121 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
lea eax, qword ptr [rbx + rbx + 18245]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
cmovnbe cx, bx
and eax, 933895314
mul cx
and cl, al
add al, -14 # instrumentation
lea dx, qword ptr [rax + rsi]
add al, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
sbb bl, bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
