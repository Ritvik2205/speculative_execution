.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 42
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 85
btc rdi, 37
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
cmp edx, esi
cmovl rax, rsi
setnz al
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub rax, 1451608022
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 2
inc cl
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
