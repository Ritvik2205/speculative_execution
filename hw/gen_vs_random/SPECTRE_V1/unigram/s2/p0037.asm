.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
lea rcx, qword ptr [rdx + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
or ecx, edi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, cl
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
neg al
lea rsi, qword ptr [rsi + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 84
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
setnb al
setz bl
btr rcx, 131
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
