.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns cl
setnbe dl
lea ebx, qword ptr [rdx + rax + 73]
or dl, al
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 87
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
lea eax, qword ptr [rsi]
lea ebx, qword ptr [rdi + rbx + 42]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 77
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or al, dl
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 18
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 24
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
