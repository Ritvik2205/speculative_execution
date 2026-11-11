.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc esi
cmovl edx, ecx
and rax, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
xchg al, sil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
adc edi, esi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and dx, 100
test di, 51
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 97
add bl, 2 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
