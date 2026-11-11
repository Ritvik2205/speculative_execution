.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 77
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
cmovnbe rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
lea eax, qword ptr [rbx + rsi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx + rcx + 99]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and sil, sil
test edi, edx
add bl, 111 # instrumentation
cmovs rbx, rbx
btr rdx, rbx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
