.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle edx, edx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
test eax, 1729060510
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
or al, dl
btc bx, 104
or dl, cl
btc di, bx
xor bl, -88
or bl, -54
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor rcx, 71
or dl, bl
xor dl, -19
bt dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
