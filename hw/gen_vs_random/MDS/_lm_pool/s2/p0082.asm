.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 127
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
btr ax, di
btr esi, eax
and cl, -71
or al, 54
and al, dl
xor rdi, -9
xor bl, -27
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test bl, -114
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, -978188247
or al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
