.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edi
btr esi, eax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and bl, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
test al, -81
btr cx, ax
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
btr eax, ebx
and al, dl
or dil, -78
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 86
or bl, -54
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
bt di, ax
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
