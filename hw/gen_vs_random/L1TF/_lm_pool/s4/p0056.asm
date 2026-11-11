.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 84
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
or rdx, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
