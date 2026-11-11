.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
lea rcx, qword ptr [rbx + rbx + 11064]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
lea di, qword ptr [rbx]
xor al, 78
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
sub bl, dil
sub al, bl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
sub bl, -19
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
