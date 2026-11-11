.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 20
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
or cl, cl
bt rcx, 16
btc bx, cx
xor bl, cl
and bl, 20 # instrumentation
cmovo ecx, ebx
or cl, cl
and bl, 127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
test al, sil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and al, 39 # instrumentation
cmovbe dx, cx
or sil, -49
or edi, -88
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
test al, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and dl, 96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and cl, -23 # instrumentation
cmovno eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
