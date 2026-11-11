.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
or esi, edx
and rsi, 70
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
or eax, -1827868798
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
bt edi, 254
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
bt edx, 254
cmovb si, dx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
btc di, cx
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 66
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
xor al, al
test rax, 1732677821
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
