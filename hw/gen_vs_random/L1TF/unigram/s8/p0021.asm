.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 42
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 5
cmovbe ecx, eax
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
setns dl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmovo esi, eax
mov bl, 35
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 40
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
lea di, qword ptr [rax]
sub eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
