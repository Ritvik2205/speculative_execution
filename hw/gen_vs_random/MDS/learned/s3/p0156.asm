.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 27170
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rax, -636362975
and edi, 23
and al, 75
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
not al
test eax, 298249463
test eax, -409834435
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and di, 91
and rax, -978188247
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
