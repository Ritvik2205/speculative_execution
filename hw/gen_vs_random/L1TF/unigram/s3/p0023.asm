.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
bts rcx, rdx
or rdi, 95
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
lea eax, qword ptr [rdi + rdx]
sub ax, -3178
test bl, -92
sub cl, -49
setp cl
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
btr eax, 47
lea ax, qword ptr [rdx + rdx + 43]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
