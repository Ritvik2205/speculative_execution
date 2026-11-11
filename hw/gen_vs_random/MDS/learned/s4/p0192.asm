.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle esi, esi
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 13
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or bl, -125
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
xor cl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
bts rax, 77
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and al, -55
xor bl, dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or dl, dil
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
