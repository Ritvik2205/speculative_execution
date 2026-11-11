.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovbe ecx, ecx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
or al, 30
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and cl, sil
and cl, 11 # instrumentation
cmovp esi, edi
test sil, dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
cmovnle cx, dx
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and cl, sil
btr esi, esi
btc bx, 104
or dl, dil
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
