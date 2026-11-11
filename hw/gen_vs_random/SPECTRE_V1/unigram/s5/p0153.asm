.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, al
or sil, al
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
btr ax, 197
sub ecx, edi
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
movsx rdx, di
lea cx, qword ptr [rax + rax + 48724]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
or sil, sil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
