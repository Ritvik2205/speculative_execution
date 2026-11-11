.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
xor rdi, -9
or sil, sil
and rdi, 30
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
xor dil, 8
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and al, sil
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
or rcx, 54
btr ecx, ebx
test edx, -1561252782
test bl, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
