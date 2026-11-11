.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rcx], cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
cmovb rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdi
not rbx
bts si, dx
and al, -103 # instrumentation
cmovns eax, eax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 28
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
cmovnz rbx, rcx
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
cmovs ebx, edx
test edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
