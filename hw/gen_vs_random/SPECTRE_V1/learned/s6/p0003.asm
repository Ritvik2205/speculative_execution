.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
sbb ecx, 34
lea di, qword ptr [rbx]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
neg rbx
sub cl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test sil, 13
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
