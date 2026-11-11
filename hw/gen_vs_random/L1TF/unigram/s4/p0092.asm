.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ecx, 29
or dl, -92
add dl, -1
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
sbb bl, dil
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
add cl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
xor di, dx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
