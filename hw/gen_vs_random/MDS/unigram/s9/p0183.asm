.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -55
jmp .bb_0.1
.bb_0.1:
xor al, dl
or cx, 39
and dl, -73
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 97
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 32
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
or dl, bl
or bx, 42
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
btr esi, ecx
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
cmovnp rsi, rax
cmovs rax, rbx
cmovz cx, cx
cmovnp rcx, rsi
and al, 42 # instrumentation
cmovz esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
