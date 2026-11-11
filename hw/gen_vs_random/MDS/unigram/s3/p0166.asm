.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 60
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and al, 54 # instrumentation
cmovnp bx, bx
bt edi, 225
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and dl, sil
btc di, 233
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
or sil, -49
xor al, dil
and dil, sil
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
btc bx, 104
bt ax, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
