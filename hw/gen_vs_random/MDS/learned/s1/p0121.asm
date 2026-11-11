.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
btr di, 199
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or eax, -1642752131
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
cmovp esi, edi
movzx di, sil
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
add bl, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
test rax, 1732677821
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
