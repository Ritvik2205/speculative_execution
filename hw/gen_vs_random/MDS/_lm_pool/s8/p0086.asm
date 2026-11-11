.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and al, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and si, -121
or rbx, -72
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
or al, 30
jmp .bb_0.1
.bb_0.1:
or dil, cl
xor dl, -59
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
xor dl, cl
bts ecx, 3
or al, -17
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
or ax, 30524
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
