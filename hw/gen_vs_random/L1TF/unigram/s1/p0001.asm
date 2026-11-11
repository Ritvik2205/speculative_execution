.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
cmovl esi, ecx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
lea dx, qword ptr [rdi]
cmovnp cx, di
sbb rcx, 62
add al, -113 # instrumentation
mov rdx, 34
cwd
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 12
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
setnbe cl
lea eax, qword ptr [rcx + rax + 9]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
sbb rdi, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
