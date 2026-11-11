.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
test rcx, 88
lea bx, qword ptr [rdx + rax]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
setnbe al
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 68
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
sbb cl, sil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 55
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
