.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 31
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and dl, 97 # instrumentation
cmovnp si, ax
xor bl, -102
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
cmovl edx, edx
cmovbe edi, ecx
or al, -61
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
test eax, 1287331633
or sil, cl
or dl, 51
bts rcx, 73
cmovns dx, si
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
