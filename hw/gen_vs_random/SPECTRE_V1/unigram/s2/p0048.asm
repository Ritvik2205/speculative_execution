.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
sbb ecx, 88
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
bts dx, ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
lea ebx, qword ptr [rcx + rcx + 43124]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 46
lea di, qword ptr [rdi + rdx + 30816]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
add dl, 47
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], edx
lea di, qword ptr [rdi + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 77
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 20
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
