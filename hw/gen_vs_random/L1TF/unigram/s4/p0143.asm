.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rcx + rdi + 31]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, rax
jmp .bb_0.1
.bb_0.1:
setnbe dl
or dl, dl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
sbb rbx, 95
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
mov di, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
