.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 92
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 18
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
lea edi, qword ptr [rax + rdi]
cmp bl, 56
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
