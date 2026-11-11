.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add cl, al
inc sil
add edx, edi
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
test cl, bl
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rsi, 98
add cl, -103 # instrumentation
cmovnl rcx, rdx
inc bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
cmp bl, 22
cmovs rcx, rax
or dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
or ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
