.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
or dx, 16
sub rax, -132886581
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
cmovb si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
