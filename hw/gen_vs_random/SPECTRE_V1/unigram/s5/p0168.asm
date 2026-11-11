.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
mov sil, cl
cmovle rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
bts rsi, 95
jno .bb_0.1
jmp .exit_0
.bb_0.1:
inc rax
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -88
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
or bx, 9
cmovb ecx, ebx
sub cx, 15
lea dx, qword ptr [rcx + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
