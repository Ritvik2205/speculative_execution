.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
or dl, al
cmovbe edx, esi
and cl, -71
and esi, 90
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and bl, dl
btr edx, 255
btc dx, si
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 70
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
xor bx, bx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
